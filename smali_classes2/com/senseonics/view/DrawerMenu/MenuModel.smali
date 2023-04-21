.class public Lcom/senseonics/view/DrawerMenu/MenuModel;
.super Ljava/lang/Object;
.source "MenuModel.java"


# instance fields
.field private active:Z

.field private drawableId:I

.field private drawableId2:I

.field private drawableId2Visibility:I

.field private menuName:Ljava/lang/String;

.field private menuType:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuType:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setMenuName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p3}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setDrawableId(I)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p0, p4}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setDrawableId2(I)V

    const/16 p1, 0x8

    .line 24
    invoke-virtual {p0, p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setDrawableId2Visibility(I)V

    return-void
.end method


# virtual methods
.method public getDrawableId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId:I

    return v0
.end method

.method public getDrawableId2()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId2:I

    return v0
.end method

.method public getDrawableId2Visibility()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId2Visibility:I

    return v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuType()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuType:Ljava/lang/Object;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->active:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->active:Z

    return-void
.end method

.method public setDrawableId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId:I

    return-void
.end method

.method public setDrawableId2(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId2:I

    return-void
.end method

.method public setDrawableId2Visibility(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId2Visibility:I

    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuName:Ljava/lang/String;

    return-void
.end method
