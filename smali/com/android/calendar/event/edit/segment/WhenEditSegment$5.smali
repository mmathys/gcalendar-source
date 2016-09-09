.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;
.super Ljava/lang/Object;
.source "WhenEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onBeginChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 894
    return-void
.end method
