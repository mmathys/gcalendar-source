.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;


# direct methods
.method constructor <init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$2;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$2;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    # invokes: Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->stopPulsing()V
    invoke-static {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->access$300(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V

    .line 519
    return-void
.end method
