.class Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;
.super Ljava/lang/Object;
.source "NinjaSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

.field final synthetic val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/common/NinjaSwitch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    iput-object p2, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    # getter for: Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->access$000(Lcom/android/calendar/newapi/segment/common/NinjaSwitch;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 55
    :cond_0
    return-void
.end method
