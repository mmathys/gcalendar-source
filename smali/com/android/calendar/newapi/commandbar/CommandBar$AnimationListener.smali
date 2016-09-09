.class Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;
.super Ljava/lang/Object;
.source "CommandBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/commandbar/CommandBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/commandbar/CommandBar;


# direct methods
.method private constructor <init>(Lcom/android/calendar/newapi/commandbar/CommandBar;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;->this$0:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/commandbar/CommandBar$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;-><init>(Lcom/android/calendar/newapi/commandbar/CommandBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;->this$0:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/calendar/newapi/commandbar/CommandBar;->setAnimationProgress(I)V
    invoke-static {v1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->access$100(Lcom/android/calendar/newapi/commandbar/CommandBar;I)V

    .line 99
    return-void
.end method
