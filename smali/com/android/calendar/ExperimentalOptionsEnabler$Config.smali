.class public Lcom/android/calendar/ExperimentalOptionsEnabler$Config;
.super Ljava/lang/Object;
.source "ExperimentalOptionsEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ExperimentalOptionsEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final clicksRequired:I

.field public final maxClickDelayInMs:I

.field public final minClicksBeforeStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/calendar/ExperimentalOptionsEnabler$Config;->maxClickDelayInMs:I

    .line 33
    iput p2, p0, Lcom/android/calendar/ExperimentalOptionsEnabler$Config;->minClicksBeforeStart:I

    .line 34
    iput p3, p0, Lcom/android/calendar/ExperimentalOptionsEnabler$Config;->clicksRequired:I

    .line 35
    return-void
.end method
