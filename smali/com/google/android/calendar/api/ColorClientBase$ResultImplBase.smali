.class public abstract Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;
.super Ljava/lang/Object;
.source "ColorClientBase.java"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ResultImplBase"
.end annotation


# instance fields
.field protected final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 37
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
