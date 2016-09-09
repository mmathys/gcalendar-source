.class public Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;
.super Ljava/lang/Object;
.source "BaseEditSegmentFactory.java"

# interfaces
.implements Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/editor/BaseEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutInflaterFactoryMethod"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;->mInflater:Landroid/view/LayoutInflater;

    .line 212
    iput p2, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;->mLayoutId:I

    .line 213
    return-void
.end method


# virtual methods
.method public createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    return-object v0
.end method
