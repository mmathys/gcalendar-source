.class Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;
.super Ljava/lang/Object;
.source "TaskAssistEditSegment.java"

# interfaces
.implements Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoAssist()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_category_editor_action:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->logClick(Landroid/content/Context;I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->gotoAssist(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public removeAssist()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
