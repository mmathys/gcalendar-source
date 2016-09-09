.class Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;
.super Ljava/lang/Object;
.source "StickyAllDayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field final synthetic val$finalHeight:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/StickyAllDayManager;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->this$0:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->val$finalHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 221
    iget v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->val$finalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    return-void
.end method
