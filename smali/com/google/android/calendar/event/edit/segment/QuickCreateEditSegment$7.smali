.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$timeToSet:Lcom/google/personalization/assist/annotate/api/nano/EventTime;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;->val$timeToSet:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;->val$timeToSet:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyTimeChange(Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$500(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V

    .line 922
    return-void
.end method
