.class public Lcom/android/calendar/newapi/segment/common/EditSegment;
.super Landroid/widget/FrameLayout;
.source "EditSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerT:Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListenerT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/EditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method public setListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/EditSegment;->mListener:Ljava/lang/Object;

    .line 24
    return-void
.end method
