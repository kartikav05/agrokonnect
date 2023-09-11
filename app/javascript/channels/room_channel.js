import consumer from "./consumer";

const chatRoom = document.getElementById("chat-room");
if (chatRoom) {
  const chatMessages = document.getElementById("my-chat");
  const chatForm = document.getElementById("chat-form");
  const userId = Number(document.getElementById("chat-text-input2").value);

  consumer.subscriptions.create("RoomChannel", {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log("connected");
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      const messageElement = document.createElement("div");
      if (userId === data.id) {
        messageElement.innerHTML = `<div class="m-1 p-1 ms-auto" style="background-color: white; border-radius: 10px;max-width:250px;">
        <p>
        <strong class='text-success'>${data.name}</strong>:${data.message}
        </p>
        </div>`;
      } else {
        messageElement.innerHTML = ` <div class="m-1 p-1" style="background-color: white; border-radius: 10px;max-width:250px;">
       <p>
       <strong class='text-warning'>${data.name}</strong>:${data.message}
       </p>
       </div>`;
      }

      chatMessages.appendChild(messageElement);
    },
  });

  chatForm.addEventListener("submit", function (e) {
    e.preventDefault();
    const message = document.getElementById("chat-text-input1").value;

    consumer.subscriptions.subscriptions[0].perform("send_message", {
      message: message,
      id: userId,
    });
    console.log("Sending message:", message);

    document.getElementById("chat-text-input1").value = "";
  });
}
