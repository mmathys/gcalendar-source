.class public abstract Lcom/android/calendar/PreventDoubleClick;
.super Ljava/lang/Object;
.source "PreventDoubleClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final mBetweenClickTime:J

.field protected mFirstClickTime:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/PreventDoubleClick;-><init>(J)V

    .line 34
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/PreventDoubleClick;->mFirstClickTime:J

    .line 37
    iput-wide p1, p0, Lcom/android/calendar/PreventDoubleClick;->mBetweenClickTime:J

    .line 38
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 43
    iget-wide v2, p0, Lcom/android/calendar/PreventDoubleClick;->mFirstClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/calendar/PreventDoubleClick;->mBetweenClickTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-wide v0, p0, Lcom/android/calendar/PreventDoubleClick;->mFirstClickTime:J

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/calendar/PreventDoubleClick;->onFirstClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract onFirstClick(Landroid/view/View;)V
.end method
