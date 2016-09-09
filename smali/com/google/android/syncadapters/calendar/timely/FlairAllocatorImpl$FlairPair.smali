.class public Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;
.super Ljava/lang/Object;
.source "FlairAllocatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlairPair"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->score:I

    .line 43
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->key:Ljava/lang/String;

    .line 44
    return-void
.end method
