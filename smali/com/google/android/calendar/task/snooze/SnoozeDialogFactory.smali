.class public Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;
    }
.end annotation


# direct methods
.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZLcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V
    .locals 15

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 49
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v9

    .line 51
    sget v2, Lcom/android/calendar/R$array;->task_snooze_options:I

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 52
    if-nez p6, :cond_0

    .line 53
    const/4 v3, 0x1

    array-length v4, v2

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v13, v2

    .line 57
    :goto_0
    new-instance v2, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0, v9}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    sget-object v3, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    new-instance v2, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p3

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;-><init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;ZLandroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/time/DateTime;JI)V

    .line 109
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/calendar/R$string;->task_snooze_title:I

    .line 110
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v3, v13, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$2;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$2;-><init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V

    .line 112
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return-void

    :cond_0
    move-object v13, v2

    goto :goto_0
.end method
