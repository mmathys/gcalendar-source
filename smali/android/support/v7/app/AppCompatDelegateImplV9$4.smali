.class Landroid/support/v7/app/AppCompatDelegateImplV9$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->dismissPopups()V
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$400(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    .line 510
    return-void
.end method
