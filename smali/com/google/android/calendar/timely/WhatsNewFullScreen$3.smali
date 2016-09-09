.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$3;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$3;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$3;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # invokes: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->crossfadeViews()V
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$200(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    .line 162
    return-void
.end method
