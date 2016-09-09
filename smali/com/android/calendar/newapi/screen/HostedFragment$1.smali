.class Lcom/android/calendar/newapi/screen/HostedFragment$1;
.super Ljava/lang/Object;
.source "HostedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/HostedFragment;->postDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/HostedFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/HostedFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/HostedFragment$1;->this$0:Lcom/android/calendar/newapi/screen/HostedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/HostedFragment$1;->this$0:Lcom/android/calendar/newapi/screen/HostedFragment;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/HostedFragment;->dismiss()V

    .line 39
    return-void
.end method
