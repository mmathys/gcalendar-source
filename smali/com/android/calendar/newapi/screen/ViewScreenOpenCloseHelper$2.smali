.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$2;
.super Ljava/lang/Object;
.source "ViewScreenOpenCloseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # invokes: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->startOpenAnimation()V
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$100(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V

    .line 141
    return-void
.end method
