.class public Lcom/android/calendar/newapi/model/Holder;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HeldType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHeldObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "THeldType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THeldType;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/calendar/newapi/model/Holder;->mHeldObject:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THeldType;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/newapi/model/Holder;->mHeldObject:Ljava/lang/Object;

    return-object v0
.end method
