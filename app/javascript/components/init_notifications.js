const initNotifications = () => {
  const notifications = document.getElementById('js-notifications');
  if (notifications) {
    setInterval(()=> {
      fetch("/notifications", { headers: { accept: "application/json" } })
        .then((response) => response.json())
        .then((data) => {
          notifications.innerHTML = data.length;
        });
    }, 3000);
  }
}
export { initNotifications }
//  TODO: swap out for action cable
