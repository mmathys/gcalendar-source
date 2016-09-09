.class Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;
.super Ljava/lang/Object;
.source "TimeZoneUpdateDialogLauncher.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->maybeLaunchDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/accounts/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentDisplayOffset:J

.field final synthetic val$currentTimeZoneId:Ljava/lang/String;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;Landroid/app/Activity;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    iput-object p2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$now:J

    iput-object p5, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentTimeZoneId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentDisplayOffset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;

    iget-object v1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;-><init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accounts to update: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mOnSaveInstanceStateCalled:Z
    invoke-static {v0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$100(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing timezone dialog"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    check-cast p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentTimeZoneId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->show(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    # setter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z
    invoke-static {v0, v4}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$202(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;Z)Z

    .line 176
    return-void

    .line 170
    :cond_1
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No accounts to update. Saving currentTimezone %s as last displayed."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentTimeZoneId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    const-string v1, "preferences_last_display_tz"

    iget-object v2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentTimeZoneId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    return-void
.end method
