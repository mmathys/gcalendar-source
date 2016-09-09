.class Lcom/android/calendar/ViewScreenFactory$Arguments;
.super Ljava/lang/Object;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ViewScreenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TimelineItemT::",
        "Lcom/android/calendar/timely/TimelineItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

.field callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

.field context:Landroid/content/Context;

.field item:Lcom/android/calendar/timely/TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTimelineItemT;"
        }
    .end annotation
.end field

.field resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ViewScreenFactory$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/calendar/ViewScreenFactory$Arguments;-><init>()V

    return-void
.end method
