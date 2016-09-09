.class public Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;
.source "BaseEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/editor/BaseEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutInflaterFactoryMethodWithAspect"
.end annotation


# instance fields
.field private mAspectKey:Lcom/android/calendar/editor/AspectKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    .line 234
    iput-object p3, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    .line 235
    return-void
.end method


# virtual methods
.method public createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;
    .locals 2
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
    .line 239
    invoke-super {p0, p1}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/AspectEditSegment;

    .line 241
    iget-object v1, p0, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;->setAspectKey(Lcom/android/calendar/editor/AspectKey;)V

    .line 242
    return-object v0
.end method
