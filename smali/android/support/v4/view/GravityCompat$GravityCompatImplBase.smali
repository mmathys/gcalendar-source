.class Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;
.super Ljava/lang/Object;
.source "GravityCompat.java"

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 47
    return-void
.end method

.method public getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 40
    const v0, -0x800001

    and-int/2addr v0, p1

    return v0
.end method
