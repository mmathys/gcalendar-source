.class Lcom/android/calendar/AllInOneCalendarActivity$20;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->runOnGlobalLayout(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3317
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$20;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$20;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/calendar/AllInOneCalendarActivity$20;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$20;->val$view:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3321
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$20;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3322
    return-void
.end method
