const ctx = document.getElementById("myChart");
new Chart(ctx, {
  type: "bar",
  data: {
    labels: ["Sản phẩm", "Khách hàng", "Danh Mục", "Bình luận"],
    datasets: [
      {
        label: "Thống kê chung cửa hàng",
        data: [3, 2, 3, 4],
        borderWidth: 1,
        backgroundColor: [
          "rgb(255, 99, 132)",
          "rgb(75, 192, 192)",
          "rgb(255, 205, 86)",
          "rgb(201, 203, 207)",
        ],
      },
    ],
  },
  options: {
    scales: {
      y: {
        beginAtZero: true,
      },
    },
  },
});
console.log(`cái này trong admin.js{data1}`);
console.log(data1);
