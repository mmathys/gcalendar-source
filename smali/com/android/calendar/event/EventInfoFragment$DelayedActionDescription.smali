.class public Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedActionDescription"
.end annotation


# instance fields
.field public final mActionId:I

.field public final mTimelineItem:Lcom/android/calendar/timely/TimelineItem;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineItem;I)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 223
    iput p2, p0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mActionId:I

    .line 224
    return-void
.end method
