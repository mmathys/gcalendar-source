.class public Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;
.super Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;
.source "ColorClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/ColorClient$ListResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListResultImpl"
.end annotation


# instance fields
.field private final mColors:[Lcom/google/android/calendar/api/ApiColor;


# direct methods
.method constructor <init>(I[Lcom/google/android/calendar/api/ApiColor;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;-><init>(I)V

    .line 67
    iput-object p2, p0, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;->mColors:[Lcom/google/android/calendar/api/ApiColor;

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;-><init>(Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;->mColors:[Lcom/google/android/calendar/api/ApiColor;

    .line 72
    return-void
.end method


# virtual methods
.method public getApiColors()[Lcom/google/android/calendar/api/ApiColor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;->mColors:[Lcom/google/android/calendar/api/ApiColor;

    return-object v0
.end method
