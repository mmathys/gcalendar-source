.class Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;
.super Ljava/lang/Object;
.source "TaskAssistEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetTaskAssistance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

.field final synthetic val$isClickable:Z


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;Z)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    iput-boolean p2, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;->val$isClickable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;->val$isClickable:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistDialogListener:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;->gotoAssist()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistDialogListener:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;->removeAssist()V

    goto :goto_0
.end method
