.class public abstract Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;
.super Lcom/android/calendar/cache/VolleyRequestKey;
.source "UnknownUrlVolleyRequestKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;
    }
.end annotation


# instance fields
.field protected mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/cache/VolleyRequestKey;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method
