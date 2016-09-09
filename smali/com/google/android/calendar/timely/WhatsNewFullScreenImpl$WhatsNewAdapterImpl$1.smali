.class Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl$1;
.super Ljava/lang/Object;
.source "WhatsNewFullScreenImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->getTextsView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;

    iget-object v0, v0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;->finishWhatsNew()V

    .line 149
    return-void
.end method
