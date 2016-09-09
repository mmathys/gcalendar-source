.class Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;
.super Ljava/lang/Object;
.source "TaskSuggestEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

.field final synthetic val$titleToSet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;->val$titleToSet:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;->val$titleToSet:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method
