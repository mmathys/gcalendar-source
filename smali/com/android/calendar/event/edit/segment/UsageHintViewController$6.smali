.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintsPointerVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field final synthetic val$hintsPointer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;->val$hintsPointer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;->val$hintsPointer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    return-void
.end method
