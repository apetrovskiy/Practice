import numpy as np

list1 = [0,1,2,3,4]

arr1d = np.array(list1)

list1.append(5)

arr1d + 2

list2 = [[1,1,1,],[2,2,2],[3,3,3]]
arr2d = np.array(list2)

type(arr2d)

arr2d.dtype

arr2d = np.array(list2, dtype="float")

arr2d = arr2d.astype('int')

arr2d.astype('str')

list1.append('6')


np2list = arr2d.tolist()


arr2d.tostring()

arr2d.tobytes()


# dtypes and shape

arr2d = arr2d.astype('float')

print("Shape: ",arr2d.shape)


arr2d.size

arr2d.ndim

arr1d = arr1d * arr1d

arr1d[1]


arr2d[1][0]

boolarr = arr2d < 3


arr2d[boolarr]


arr2d[::-1]



# np.nan, np.inf


arr2d[0][0] = np.nan

arr2d[0][1] = np.inf

np.isnan(arr2d)

np.isinf(arr2d)

missing_flag = np.isnan(arr2d) | np.isinf(arr2d)


# replace inf and nan with 0

arr2d[missing_flag]

arr2d[missing_flag] = 0


# Statistical operations

arr2d.mean()

arr2d.max()

arr2d.min()

arr2d.all()

arr2d.std()

arr2d.var()

arr2d.sqeeze()

arr2d.cumsum()

arr = arr2d[:2,:2]


arr2d[1:3,1:3]

arr2d.reshape(9,1)

arr2d.reshape(1,9)

a = arr2d.flatten()

b = arr2d.ravel()

b[0] = -1