.class Lcom/google/android/calendar/extensions/BirthdayManager$1;
.super Landroid/os/AsyncTask;
.source "BirthdayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/BirthdayManager;->initBirthdayItemAsync(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/BirthdayManager;

.field final synthetic val$callback:Lcom/android/calendar/BirthdayManagerInterface$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/android/calendar/timely/TimelineBirthday;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/BirthdayManager;Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->this$0:Lcom/google/android/calendar/extensions/BirthdayManager;

    iput-object p2, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$item:Lcom/android/calendar/timely/TimelineBirthday;

    iput-object p4, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$callback:Lcom/android/calendar/BirthdayManagerInterface$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/BirthdayManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->this$0:Lcom/google/android/calendar/extensions/BirthdayManager;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$item:Lcom/android/calendar/timely/TimelineBirthday;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/extensions/BirthdayManager;->initBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/BirthdayManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$callback:Lcom/android/calendar/BirthdayManagerInterface$Callback;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$callback:Lcom/android/calendar/BirthdayManagerInterface$Callback;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/BirthdayManager$1;->val$item:Lcom/android/calendar/timely/TimelineBirthday;

    invoke-interface {v0, v1}, Lcom/android/calendar/BirthdayManagerInterface$Callback;->onBirthdayItemLoaded(Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 130
    :cond_0
    return-void
.end method
