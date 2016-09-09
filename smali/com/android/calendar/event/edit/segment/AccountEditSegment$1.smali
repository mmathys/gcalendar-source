.class Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;
.super Ljava/lang/Object;
.source "AccountEditSegment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/AccountEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    .line 75
    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/calendar/event/TimelyEditHelper;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mEditInput:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;

    .line 78
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v2

    .line 79
    invoke-static {v1}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->changeAccountInternal(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 81
    return-void
.end method
