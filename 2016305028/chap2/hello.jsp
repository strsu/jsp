<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
	<title>Hello</title>
</head>
<body>
	<%!
		public String extract() {
			Random random = new Random();
			int[] arr = new int[7];
			for (int i=0;i<7;i++) {
				arr[i] = random.nextInt(50);
				for (int j=0;j<i;j++) {
					if(arr[i] == arr[j]) {
						i--;
						break;
					}
				}
			}

			String str = arr[0] + " " + arr[1] + " " + arr[2] + " " + arr[3] + " " + arr[4] + " " + arr[5] + " + Bonus " + arr[6] + " ";
			return str;
		}
	%>

	Lotto Number :  <%= extract() %>
</body>
</html>