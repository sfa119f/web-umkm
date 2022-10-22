// Jalankan dengan "node jawaban.js"

const fruits = [
  { fruitId: 1, fruitName: "Apel", fruitType: "IMPORT", stock: 10 },
  { fruitId: 2, fruitName: "Kurma", fruitType: "IMPORT", stock: 20 },
  { fruitId: 3, fruitName: "apel", fruitType: "IMPORT", stock: 50 },
  { fruitId: 4, fruitName: "Manggis", fruitType: "LOCAL", stock: 100 },
  { fruitId: 5, fruitName: "Jeruk Bali", fruitType: "LOCAL", stock: 10 },
  { fruitId: 5, fruitName: "KURMA", fruitType: "IMPORT", stock: 20 },
  { fruitId: 5, fruitName: "Salak", fruitType: "LOCAL", stock: 150 },
];

const comments = [
  {
    commentId: 1,
    commentContent: "Hai",
    replies: [
      {
        commentId: 11,
        commentContent: "Hai juga",
        replies: [
          {
            commentId: 111,
            commentContent: "Haai juga hai jugaa",
          },
          {
            commentId: 112,
            commentContent: "Haai juga hai jugaa",
          },
        ],
      },
      {
        commentId: 12,
        commentContent: "Hai juga",
        replies: [
          {
            commentId: 121,
            commentContent: "Haai juga hai jugaa",
          },
        ],
      },
    ],
  },
  {
    commentId: 2,
    commentContent: "Halooo",
  },
];

// SOAL 1
console.log();
console.log("SOAL 1");

let nameFruits = fruits.map((el) => el.fruitName);
console.log("Buah yang dimiliki Andi = ", nameFruits);

// SOAL 2
console.log();
console.log("SOAL 2");

let fruitTypes = fruits.map((el) => el.fruitType);
fruitTypes = [...new Set(fruitTypes)];
console.log("Jumlah wadah = ", fruitTypes.length);

let importType = [];
fruits.forEach((el) => {
  if (el.fruitType == fruitTypes[0]) importType.push(el.fruitName);
});
console.log("Wadah import = ", importType);

let localType = [];
fruits.forEach((el) => {
  if (el.fruitType == fruitTypes[1]) localType.push(el.fruitName);
});
console.log("Wadah local = ", localType);

// SOAL 3
console.log();
console.log("SOAL 3");

let countImport = 0;
fruits.forEach((el) => {
  if (el.fruitType == fruitTypes[0]) countImport += el.stock;
});
console.log("Jumlah di wadah import = ", countImport);

let countLocal = 0;
fruits.forEach((el) => {
  if (el.fruitType == fruitTypes[1]) countLocal += el.stock;
});
console.log("Jumlah di wadah local = ", countLocal);

// SOAL 4
console.log();
console.log("SOAL 4");

// - Terdapat buah yang identik namun tidak menjadi 1 tuple data (hanya berbeda ID dan cara penulisan nama) yaitu pada buah apel dan kurma
console.log(
  "- Terdapat beberapa fruitId yang sama (suatu ID haruslah unik, tidak boleh terduplikasi"
);

// - Terdapat beberapa fruitId yang sama (suatu ID haruslah unik, tidak boleh terduplikasi)
console.log(
  "- Terdapat beberapa fruitId yang sama (suatu ID haruslah unik, tidak boleh terduplikasi)"
);

// SOAL 5
console.log();
console.log("SOAL 5");

function countComment(arr, num) {
  if (!arr) return 0;
  else if (arr.length == 0) return 0;
  else if (!num) return arr.length + countComment(arr, num + 1);
  else {
    if (num > arr.length) return 0;
    else
      return countComment(arr, num + 1) + countComment(arr[num - 1].replies, 0);
  }
}
console.log("Jumlah komentar = ", countComment(comments, 0));
