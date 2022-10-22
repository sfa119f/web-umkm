import { jsonWarungIjo } from "./config";

export default {
  getProducts(limit) {
    return jsonWarungIjo.get(`api/products${limit ? "?limit=" + limit : ""}`);
  },
  getCountProduct() {
    return jsonWarungIjo.get("api/countProduct");
  },
  getCountCustomer() {
    return jsonWarungIjo.get("api/countCustomer");
  },
  getCountOrder() {
    return jsonWarungIjo.get("api/countOrder");
  },
};
