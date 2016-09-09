.class public Lcom/android/calendar/timely/data/DiffData;
.super Ljava/lang/Object;
.source "DiffData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mId:Ljava/lang/Object;

.field private mNewData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mPreviousData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/calendar/timely/data/DiffData;->mId:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lcom/android/calendar/timely/data/DiffData;->mNewData:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/android/calendar/timely/data/DiffData;->mPreviousData:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/timely/data/DiffData;->mId:Ljava/lang/Object;

    return-object v0
.end method

.method public getNewData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/timely/data/DiffData;->mNewData:Ljava/lang/Object;

    return-object v0
.end method

.method public setNewData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/calendar/timely/data/DiffData;->mNewData:Ljava/lang/Object;

    .line 45
    return-void
.end method
