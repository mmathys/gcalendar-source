.class Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;
.super Landroid/os/AsyncTask;
.source "WhatsNewFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->checkForAccountChanges(Landroid/app/Activity;)V
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
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Lcom/android/calendar/CalendarApplication;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;Lcom/android/calendar/CalendarApplication;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iput-object p2, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$application:Lcom/android/calendar/CalendarApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->doInBackground([Ljava/lang/Void;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getNonGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->onPostExecute([Landroid/accounts/Account;)V

    return-void
.end method

.method protected onPostExecute([Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$application:Lcom/android/calendar/CalendarApplication;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarApplication;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    # getter for: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is destroyed upon getting the accounts."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->launchAddAccount(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$100(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$200(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;[Landroid/accounts/Account;)V

    goto :goto_0
.end method
