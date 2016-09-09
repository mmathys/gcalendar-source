.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$1;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 135
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$1;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$1;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->finishWhatsNew()V

    .line 139
    return-void
.end method
