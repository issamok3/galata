const initMarkNotificationAsRead = () => {
  const conversationsContainer = document.getElementById('js-conversations');
  if (conversationsContainer) {
    fetch("/notifications/mark_as_read", { headers: { accept: "application/json" } })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
      });
  }
}
export { initMarkNotificationAsRead };
