.class Lcom/android/calendar/SpeedDialLayout$3;
.super Ljava/lang/Object;
.source "SpeedDialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/SpeedDialLayout;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$3;->this$0:Lcom/android/calendar/SpeedDialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$3;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/SpeedDialLayout;->hide(J)V

    .line 162
    return-void
.end method
