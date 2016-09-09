.class Lcom/android/calendar/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchActivity;

.field final synthetic val$icon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    iput-object p2, p0, Lcom/android/calendar/SearchActivity$2;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$2;->val$icon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 245
    const/4 v0, 0x1

    return v0
.end method
