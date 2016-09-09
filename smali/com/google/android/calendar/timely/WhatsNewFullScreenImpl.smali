.class public Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;
.super Lcom/google/android/calendar/timely/WhatsNewFullScreen;
.source "WhatsNewFullScreenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$1;)V

    return-object v0
.end method

.method protected onSuccessfulCompletion()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
