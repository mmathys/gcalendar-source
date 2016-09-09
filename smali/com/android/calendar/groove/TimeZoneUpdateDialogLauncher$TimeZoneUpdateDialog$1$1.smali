.class Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;
.super Landroid/os/AsyncTask;
.source "TimeZoneUpdateDialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v1, v1, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$currentTimeZoneId:Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setTimezoneId(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v0, v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$accountsToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 243
    iget-object v3, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v3, v3, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    goto :goto_0

    .line 247
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    const-string v1, "Server timezones updated."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v0, v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    iget-object v1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v1, v1, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    iget-object v2, v2, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$currentTimeZoneId:Ljava/lang/String;

    # invokes: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->saveCurrentTimeZoneAsLastDisplayed(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->access$300(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    return-void
.end method
