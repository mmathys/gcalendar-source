.class final Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;
.super Ljava/lang/Object;
.source "FixPermissionsDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setupRadioButton(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonExtras:Landroid/view/View;

.field final synthetic val$extraText:Landroid/widget/TextView;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$spinner:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$extraText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$buttonExtras:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 276
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 277
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->getHitRect(Landroid/graphics/Rect;)V

    .line 278
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$extraText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 280
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 282
    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$buttonExtras:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 283
    return-void
.end method
