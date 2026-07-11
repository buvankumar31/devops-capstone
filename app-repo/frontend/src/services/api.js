const API_URL=window.RUNTIME_CONFIG?.API_BASE_URL || "";

export async function getDashboard(){

const response=await fetch(`${API_URL}/api/dashboard`);

return await response.json();

}
