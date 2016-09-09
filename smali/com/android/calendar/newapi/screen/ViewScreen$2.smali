.class Lcom/android/calendar/newapi/screen/ViewScreen$2;
.super Ljava/lang/Object;
.source "ViewScreen.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreen;->arrangeSegmentViews(Lcom/android/calendar/newapi/screen/SegmentViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    sub-int v1, p5, p3

    # invokes: Lcom/android/calendar/newapi/screen/ViewScreen;->onHeaderDimensionsChanged(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$100(Lcom/android/calendar/newapi/screen/ViewScreen;Landroid/view/View;I)V

    .line 221
    return-void
.end method
