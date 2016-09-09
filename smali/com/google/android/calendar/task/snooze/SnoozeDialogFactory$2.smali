.class final Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$2;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZLcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$2;->val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$2;->val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

    invoke-interface {v0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;->onTaskSnoozeCancelled()V

    .line 116
    return-void
.end method
