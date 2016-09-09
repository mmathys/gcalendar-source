.class public abstract Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.super Landroid/content/AsyncTaskLoader;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InfoExtraLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 257
    return-void
.end method


# virtual methods
.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;->forceLoad()V

    .line 262
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;->cancelLoad()Z

    .line 267
    return-void
.end method
