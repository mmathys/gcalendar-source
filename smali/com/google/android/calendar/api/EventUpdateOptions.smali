.class public Lcom/google/android/calendar/api/EventUpdateOptions;
.super Ljava/lang/Object;
.source "EventUpdateOptions.java"


# instance fields
.field private mScope:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/EventUpdateOptions;->mScope:I

    return-void
.end method


# virtual methods
.method public setScope(I)Lcom/google/android/calendar/api/EventUpdateOptions;
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/google/android/calendar/api/EventUpdateOptions;->mScope:I

    .line 35
    return-object p0
.end method
