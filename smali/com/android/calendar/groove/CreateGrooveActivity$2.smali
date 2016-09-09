.class Lcom/android/calendar/groove/CreateGrooveActivity$2;
.super Landroid/os/AsyncTask;
.source "CreateGrooveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CreateGrooveActivity;->onPreferredTimesSelectionComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/calendar/api/HabitDescriptor;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

.field final synthetic val$useSmartNotifications:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity;Z)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iput-boolean p2, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->val$useSmartNotifications:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/calendar/api/HabitDescriptor;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 323
    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 324
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    check-cast p1, [Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity$2;->doInBackground([Lcom/google/android/calendar/api/HabitDescriptor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$200(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->val$useSmartNotifications:Z

    iget-boolean v4, p0, Lcom/android/calendar/groove/CreateGrooveActivity$2;->val$useSmartNotifications:Z

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 333
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
