.class Lcom/android/calendar/ExperimentalOptionsEnabler$DefaultSystemClock;
.super Ljava/lang/Object;
.source "ExperimentalOptionsEnabler.java"

# interfaces
.implements Lcom/android/calendar/ExperimentalOptionsEnabler$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ExperimentalOptionsEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSystemClock"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ExperimentalOptionsEnabler$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/calendar/ExperimentalOptionsEnabler$DefaultSystemClock;-><init>()V

    return-void
.end method
