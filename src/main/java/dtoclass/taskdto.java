package dtoclass;

public class taskdto {

	private int taskId;
	private String tasktitle;
	private String taskDescription;
	private String taskPriority;
	private String taskDueDate;
	private int userId;

	public taskdto() {

	}

	public taskdto(int taskId, String taskDescription, String taskPriority, String taskDueDate, int userId,
			String tasktitle) {
		this.taskId = taskId;
		this.tasktitle = tasktitle;
		this.taskDescription = taskDescription;
		this.taskPriority = taskPriority;
		this.taskDueDate = taskDueDate;
		this.userId = userId;
	}

	public int getTaskId() {
		return taskId;
	}

	public String getTasktitle() {
		return tasktitle;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public String getTaskPriority() {
		return taskPriority;
	}

	public String getTaskDueDate() {
		return taskDueDate;
	}

	public int getUserId() {
		return userId;
	}
}
