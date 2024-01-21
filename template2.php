<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="./script.js"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css"  rel="stylesheet" />
</head>
<body class="flex flex-col min-h-screen">
  <!-- navbar -->
  <?php include "header.html"?>
  <!-- end navbar -->
  
  <!-- content -->
  <div class="lg:m-10 m-4 bg-white flex-grow">
    <div class="bg-sky-50 text-black p-4 rounded-t-lg border">Data Kategori</div>
    
    
    <div class="lg:p-6 p-4 flex justify-between rounded-0 border md:flex-row flex-col gap-4">
      
      <a href="" class="flex text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-3 items-center gap-2">
        <svg width="30px" height="30px" viewBox="-2.4 -2.4 28.80 28.80" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g id="SVGRepo_iconCarrier">
            <path d="M4 12H20M12 4V20" stroke="#FFFFFF" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"></path>
          </g>
        </svg>
        Tambah Data
      </a>

      <form>
        <div class="flex">
          <div class="relative w-full flex">
            <input type="search" id="search-dropdown" class="w-full bg-gray-50 rounded-s-lg border border-gray-300" placeholder="" required>
            <button type="submit" class="top-0 end-0 p-2.5 text-sm font-medium h-full text-white bg-blue-700 rounded-e-lg border border-blue-700 hover:bg-blue-800">
              <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
              </svg>
              <span class="sr-only">Search</span>
            </button>
          </div>
        </div>
      </form>
    </div>


    <div class="relative overflow-x-auto border sm:rounded-b-lg">
      <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
          <tr>
            <th scope="col" class="px-6 py-3">
              No
            </th>
            <th scope="col" class="px-6 py-3">
              Kode Kategori
            </th>
            <th scope="col" class="px-6 py-3">
              Nama Kategori
            </th>
          </tr>
        </thead>
        
        <tbody>
          <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
              1
            </th>
            <td class="px-6 py-4">
              K-0001
            </td>
            <td class="px-6 py-4">
              Komputer
            </td>
            <!-- <td class="px-6 py-4">
              <a href="#" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
            </td> -->
          </tr>
        </tbody>
        
      </table>
    </div>

  </div>
  <!-- end content -->

  <!-- footer -->
  <?php include "footer.html"?>
  <!-- end footer -->

  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
</body>
</html>