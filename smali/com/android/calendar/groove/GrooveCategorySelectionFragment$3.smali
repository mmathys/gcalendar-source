.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$3;
.super Landroid/view/ViewOutlineProvider;
.source "GrooveCategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$3;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 152
    return-void
.end method
